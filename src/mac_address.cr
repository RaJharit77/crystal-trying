def mac_address_to_bytes(mac : String) : Array(UInt8)
    parts = mac.split(":")
    if parts.size != 6
        raise ArgumentError.new("Invalid MAC address format")
    end

    bytes = Array(UInt8).new(6, 0_u8)
    parts.each_with_index do |part, index|
      unless part =~ /^[0-9A-Fa-f]{1,2}$/
        raise ArgumentError.new("Invalid MAC address segment: #{part}")
      end

      value = part.to_i(16)
      if value > 0xFF
        raise ArgumentError.new("Invalid MAC address segment: #{part}")
      end

      bytes[index] = value.to_u8
    end

    bytes
end

mac = "01:23:45:67:89:AB"
bytes = mac_address_to_bytes(mac)
puts "MAC Address: #{mac}"
puts "Bytes: #{bytes.inspect}"
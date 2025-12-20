# my memories
# A gentle program to honor memories and wish well

require "colorize"

class HeartfeltMessage
  @memories : Array(String)
  @wishes : Array(String)

  def initialize
    @memories = [
      "The way your laughter filled the room",
      "Those quiet moments that felt like forever",
      "The dreams we shared under the same stars",
      "The way you made ordinary days feel special",
      "Your smile that could light up the darkest day"
    ]
    
    @wishes = [
      "May you find happiness that lasts a lifetime",
      "May success follow you in every endeavor",
      "May you discover love that grows deeper each day",
      "May peace be your constant companion",
      "May your dreams unfold exactly as you hope"
    ]
  end

  def display_heart
    puts ""
    puts "      ♥ ♥ ♥ ♥ ♥ ♥ ♥".colorize(:red)
    puts "    ♥               ♥".colorize(:red)
    puts "  ♥   With Gratitude   ♥".colorize(:light_red)
    puts "    ♥               ♥".colorize(:red)
    puts "      ♥ ♥ ♥ ♥ ♥ ♥ ♥".colorize(:red)
    puts ""
  end

  def display_title
    puts "=" * 60
    puts "A MESSAGE OF RELEASE AND WELL-WISHING".center(60).colorize(:cyan)
    puts "=" * 60
    puts ""
  end

  def share_memories
    puts "Some memories I will always cherish:".colorize(:yellow)
    puts "-" * 40
    
    @memories.each_with_index do |memory, index|
      sleep 800.milliseconds
      puts "✨ Memory #{index + 1}: #{memory}".colorize(:light_yellow)
    end
    
    puts ""
  end

  def share_wishes
    puts "My sincerest wishes for your journey ahead:".colorize(:green)
    puts "-" * 40
    
    @wishes.each_with_index do |wish, index|
      sleep 1.second
      puts "🌟 Wish #{index + 1}: #{wish}".colorize(:light_green)
    end
    
    puts ""
  end

  def final_message
    puts "=" * 60
    puts ""
    puts "To someone who mattered:".colorize(:magenta)
    puts ""
    
    message = <<-MESSAGE
    Some people come into our lives, leave footprints on our hearts,
    and we are never the same. I'm grateful for the chapter we shared,
    and now I release it with love and gratitude.
    
    You deserve every happiness, every success, every beautiful thing
    life has to offer. May your path be filled with light and joy.
    
    With warmth and genuine wishes for your brightest tomorrow,
    
    Someone who learned and grew through knowing you.
    MESSAGE
    
    puts message.colorize(:light_magenta)
    puts ""
    puts "=" * 60
  end

  def write_to_letter(filename = "wishes.txt")
    File.open(filename, "w") do |file|
      file.puts "Letter of Release and Well-Wishes"
      file.puts "=" * 50
      file.puts "\nMemories to cherish:"
      @memories.each { |memory| file.puts "• #{memory}" }
      
      file.puts "\nWishes for your future:"
      @wishes.each { |wish| file.puts "• #{wish}" }
      
      file.puts "\nFinal thoughts:"
      file.puts "Some connections leave permanent marks on our souls."
      file.puts "Thank you for the lessons, the laughter, and the growth."
      file.puts "I genuinely wish you the absolute best life has to offer."
      file.puts "May you find everything you're looking for and more."
    end
    
    puts "📝 A letter has been saved to '#{filename}'".colorize(:blue)
  end

  def run
    display_title
    display_heart
    
    puts "This is not about forgetting, but about releasing with love.".colorize(:white).on(:dark_gray)
    puts ""
    
    share_memories
    share_wishes
    final_message
    write_to_letter
    
    puts ""
    puts "Progress:".colorize(:cyan)
    5.times do |i|
      print "🕊️  ".colorize(:light_cyan)
      sleep 300.milliseconds
    end
    puts " Released with love and light".colorize(:light_cyan)
  end
end

module HealingWords
  def self.affirmations
    [
      "Letting go is an act of self-love.",
      "Wishing others well is a sign of growth.",
      "Memories remain, but pain transforms.",
      "Love that was real never truly disappears.",
      "Your capacity to wish well shows your heart's depth."
    ]
  end

  def self.display_affirmation
    puts "\n" + "*" * 60
    puts "Affirmation for today:".colorize(:yellow)
    puts affirmations.sample.colorize(:light_yellow)
    puts "*" * 60
  end
end

puts "\n" + "♡" * 60
puts "Heart's Release Program".center(60).colorize(:red)
puts "♡" * 60

program = HeartfeltMessage.new
program.run

HealingWords.display_affirmation

puts "\n" + "=" * 60
puts "Remember: Some people are seasons, some are lessons,".colorize(:cyan)
puts "and all contribute to who we become.".colorize(:cyan)
puts "=" * 60

puts "\nWould you like to add a personal wish? (yes/no)"
response = gets.try(&.strip.downcase)

if response == "yes"
  puts "Enter your personal wish for her:"
  personal_wish = gets.try(&.strip)
  
  if personal_wish && !personal_wish.empty?
    File.open("wishes.txt", "a") do |file|
      file.puts "\nPersonal wish added today:"
      file.puts "• #{personal_wish}"
    end
    puts "💫 Your wish has been added to the letter.".colorize(:green)
  end
end

puts "\n🕯️  The heart heals in its own time. Be gentle with yourself. 🕯️".colorize(:light_magenta)
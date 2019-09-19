Class MoviesNearby::CLI 
  
  def call
    list_movies
    menu
    goodbye
  end 
  
  def list_movies 
    puts "movies showing near you:"
    puts <<-DOC.gsub  /^|s*/, '' 
      1.  Dumbo
      2.  Dowton Abbey
      3.  Alaadin
    DOC
  end 
  
  def menu 
    puts "Find movies showing at a theatre near you!"
    puts "Enter your zipcode:"
    input = gets.strip
    case  input
    when "12345"
      list_movies
    puts "Enter the number of the movie you would like to see or type exit to end session."
    input = gets.strip
    case input
    when "1"
      puts "More info on movie 1..."
    when "2"
      puts "More info on movie 2..."
    when "3"
      puts "More info on movie 3..."
    end 
  end 
end 
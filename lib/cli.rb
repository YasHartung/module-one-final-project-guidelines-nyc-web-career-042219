def welcome

  signature = <<-foo
  .         .
  `8.`8888.      ,8'  ,o888888o.     8 8888      88 8 888888888o.            ,8.       ,8.          8 8888888888 8888888 8888888888
   `8.`8888.    ,8'. 8888     `88.   8 8888      88 8 8888    `88.          ,888.     ,888.         8 8888             8 8888
    `8.`8888.  ,8',8 8888       `8b  8 8888      88 8 8888     `88         .`8888.   .`8888.        8 8888             8 8888
     `8.`8888.,8' 88 8888        `8b 8 8888      88 8 8888     ,88        ,8.`8888. ,8.`8888.       8 8888             8 8888
      `8.`88888'  88 8888         88 8 8888      88 8 8888.   ,88'       ,8'8.`8888,8^8.`8888.      8 888888888888     8 8888
       `8. 8888   88 8888         88 8 8888      88 8 888888888P'       ,8' `8.`8888' `8.`8888.     8 8888             8 8888
        `8 8888   88 8888        ,8P 8 8888      88 8 8888`8b          ,8'   `8.`88'   `8.`8888.    8 8888             8 8888
         8 8888   `8 8888       ,8P  ` 8888     ,8P 8 8888 `8b.       ,8'     `8.`'     `8.`8888.   8 8888             8 8888
         8 8888    ` 8888     ,88'     8888   ,d8P  8 8888   `8b.    ,8'       `8        `8.`8888.  8 8888             8 8888
         8 8888       `8888888P'        `Y88888P'   8 8888     `88. ,8'         `         `8.`8888. 8 888888888888     8 8888

  foo
  puts signature

  puts " "
  puts " "
  puts "Welcome to Yourmet! What is your name?"
end

def get_user

  user = gets.chomp
  if User.find_by(name: user)
    return User.find_by(name: user)
  else
    return User.create(name: user)
  end

end


def main_menu(user)

  puts "1. Search for a restaurant"
  puts "2. Look up your favorite dishes"
  puts "3. Check into a restaurant"
  puts "4. Exit"

input = gets.chomp

  case input
  when "1"
    puts "selected 1"
  when "2"
    user.print_dishes
  when "3"
    puts "selected 3"
  when "4"
    exit
  else
    puts "please select 1, 2, 3, or 4 "
    main_menu
  end

end
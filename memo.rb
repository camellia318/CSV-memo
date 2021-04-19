require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する) 3(メモを終了する)"


memo_type = gets.chomp.to_s

#続きを書いていきましょう！！(ifで条件分岐)
  if memo_type == "1"
    puts "拡張子を除いたファイル名を入力してください。"
    file_name = gets.chomp
    
    puts "メモしたい内容を記入"
    puts "記入したらEnterキー→Ctrl + Dを押して下さい"
    memo = STDIN.read
    
    CSV.open("#{file_name}.csv", "w") do |csv|
      csv.puts ["#{memo}"]
    end
    
  elsif memo_type == "2"
    puts "拡張子を除いたファイル名を入力してください。"
    file_name = gets.chomp
    
    puts "メモしたい内容を記入"
    puts "記入したらEnterキー→Ctrl + Dを押して下さい"
    memo = STDIN.read
    
    CSV.open("#{file_name}.csv", "a") do |csv|
      csv.puts ["#{memo}"]
    end
    
  elsif memo_type == "3"
    puts "メモを終了します"
  else  
    puts "1または2または3を入力してください。"  
  end


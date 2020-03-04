
puts "じゃんけん開始!0~2の数字を入力してください\n1:グー\n2:チョキ\n3:パー"

myhand = gets.to_i
enemy = rand(0..2)


handnumber = ["グー","チョキ","パー"]
enemyhand = handnumber[enemy]



if myhand == 1
    hand = "あなたの手はグーで、"
     result = ((myhand - 1) - enemy + 3) % 3

elsif myhand == 2
    hand = "あなたの手はチョキで、"
     result = ((myhand - 1) - enemy + 3) % 3
elsif myhand == 3
    hand = "あなたの手はパーで、"
     result = ((myhand - 1) - enemy + 3) % 3
else
    hand = "無効な入力です再度0~2の数を入力しなおしてください"
end




puts "===================================================================="

if myhand == 1 || myhand == 2 || myhand == 3

    if  result == 0
        puts "#{hand}相手の手は#{enemyhand}なので\n引き分けです。再挑戦待ってます！\n再選する場合は0~2の数を入力しなおしてください！"
    elsif result == 1
        puts "#{hand}相手の手は#{enemyhand}なので\nあなたの負けです。　　残念!!"
    elsif result == 2
        puts "#{hand}相手の手は#{enemyhand}なので\nあなたの勝ちです!!    おめでとう"
    else
         puts ""
    end
else
    puts "#{hand}"
end


puts "===================================================================="

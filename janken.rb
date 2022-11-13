
puts "あっちむいてホイをします。"
puts "ジャンケン・・・"


def janken
    janken_hand = ["グー","チョキ","パー","戦わない"]
    puts "0（グー）1（チョキ）2（パー）3（戦わない）"
    hand = gets.to_i
    cp_hand = rand(3)
    puts "ホイ"
    puts "--------------------"
    puts "あなた→#{janken_hand[hand]}、相手→#{janken_hand[cp_hand]}"
    
    if hand == 3 || cp_hand == 3
        puts "戦いが成立しませんでした"
        return "again"
    else
        result = hand - cp_hand
        case result
            when 0 then
                puts "あいこで・・・"
                return "aiko"
            when -1,2 then
                puts "あなたの勝ちです。あっちむいて・・・"
                return "win"
            when 1,-2 then
                puts "あなたの負けです。あっちむいて・・・"
                return "lose"
        end
    end
end



def acchi
    acchi_finger = ["上","下","左","右"]
    puts "0（上）1（下）2（左）3（右）"
    finger = gets.to_i
    cp_finger = rand(3)
    puts "ホイ"
    puts "あなた→#{acchi_finger[finger]}、相手→#{acchi_finger[cp_finger]}"
    
    if finger == cp_finger
        puts "勝敗が決まりました"
        return true
    else
        puts "もう一度"
        puts "ジャンケン・・・"
        return false
    end
end

janken_aiko = "aiko"

loop do
    janken_aiko = "aiko"
    while janken_aiko == "aiko" do
        janken_aiko = janken
        if janken_aiko == "again"
            exit
        end
    end
    
    f2 = acchi
    break if f2
end

if janken_aiko == "win"
    puts "あなたの勝ち"
elsif janken_aiko == "lose"
    puts "あなたの負け"
else
    puts "勝負は放棄されました"
end
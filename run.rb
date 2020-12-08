require_relative "./app/Familie"

puts "Möchten Sie Ihrem Familiennotizbuch ein neues Mitglied hinzufügen?? (Y/N)"

answer = gets.chomp.upcase

while answer == "Y"

    puts "Bitte Schreiben Sie die Nachname !!"
    
    nachname = gets.chomp.capitalize

    puts "Bitte Schreiben Sie das Alter!!"
    
    alter = gets.chomp.to_i

    puts "Bitte Schreiben Sie die Titel !!"
    
    title = gets.chomp

    puts "Bitte Schreiben Sie die Telefonnummer !!"
    
    telefonnummer = gets.chomp

    puts "Bitte Schreiben Sie die E-mail !!"
    
    mail = gets.chomp

    newMember = Member.new 
    newMember.nachname = nachname
    newMember.alter = alter
    newMember.title = title
    newMember.telefonnummer = telefonnummer
    newMember.mail = mail
     
    
    newMember.save
    

    if answer != "Y"
        break
    end

    puts "Möchten Sie ein weiteres Mitglied hinzufügen?(Y/N)"

    again = gets.chomp.upcase

    
    if again != "Y"
        break
    end

end
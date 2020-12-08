require "json"

#Create Class

class Member
    attr_accessor :nachname, :alter, :title, :telefonnummer, :mail

    def initlialize(*args)
        @nachname = args[0]
        @alter = args[1]
        @title = args[2]
        @telefonnummer = args[3]
        @mail = args[4]
    end
 #Save Data to Json File   
    def save
        memberinfo = {nachname: @nachname , alter: @alter, title: @title , telefonnummer: @telefonnummer , mail: @mail}.to_json
        open("livret.json","a") do  |fichier|
             fichier.puts memberinfo
        end
    end 
end

 
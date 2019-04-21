def get_first_name_of_season_winner(data, season)
  season_winner = ""
  data[season].each do |contestants|
      if contestants["status"] == "Winner"
      winner_name = contestants["name"].split(" ")
      season_winner = winner_name[0]
      end
    end
  season_winner
end

def get_contestant_name(data, occupation)
  contestant_with_occupation = ""
  data.each do |season_num, contestants|
    data[season].each do |contestant|
      if contestant["occupation"] == occupation
        contestant_with_occupation = contestant["name"]
      end
    end
  end
  contestant_with_occupation
end

def count_contestants_by_hometown(data, hometown)
  contestant_num = 0
  data.each do |season_num, contestants|
    data[season_num].each do |contestant|
      if hometown == contestant["hometown"]
        contestant_num +=1 
      end
    end
  end
  contestant_num
end

def get_occupation(data, hometown)
  contestant_occupation_from_hometown = ""
  data.each do |season_num, contestants|
    data[season_num]each do |contestant|
      if hometown == contestant["hometown"]
        contestant_occupation_from_hometown = contestant["occupation"]
      end
    end
  end
  contestant_occupation_from_hometown
      
end

def get_average_age_for_season(data, season)
  number_of_contestants = 0 
  age = 0 
  
  data.each do |season_num, contestants|
    data[season_num].each do |contestant|
        contestant_age = contestant["age"].to_f 
        age += contestant_age.to_f
        number_of_contestants += 1 
      end
    end
  end
  
  average_age = (age/number_of_contestants).round 
  average age
end

def line (katz_deli)
    if katz_deli.length == 0
        puts "The line is currently empty."
    else
        deli_line = katz_deli.map.with_index(1) do |person, index| 
            "#{index}. #{person}"
        end
        puts "The line is currently: #{deli_line.join(' ')}"
    end
end

def take_a_number(katz_deli, person)
    katz_deli << person
    puts "Welcome, #{person}. You are number #{katz_deli.index("#{person}") + 1} in line."
end

def now_serving (katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli.first}."
    end
    katz_deli.shift
end
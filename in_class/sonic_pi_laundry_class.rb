def wear_clothes(item)
  sample(item)
  sleep(2)
end

def wash_clothes(temperature)
  play(temperature)
  sleep(1)
end

def dry_clothes(dry_time)
  sample(:drum_tom_hi_hard)
  sleep(dry_time)
end

def clothes_left_in_washer()
  # assign a random time
  time = rand(1..10)
  # print out the random number
  puts time
  # return the time value
  time
end

def clothes_clean?()
  random_number = rand(1)
  puts random_number
  # if less than 0.65, returns true
  random_number < 0.65
end

# test output from clothes_clean?
#10.times do
#  clothes_clean?()
#end

5.times do
  # use question mark for t/f
  if clothes_clean?()
    wear_clothes(:loop_breakbeat)
  else
    wash_clothes(60)
    if clothes_left_in_washer() > 6
      wash_clothes(80)
    end
    dry_clothes(2)
  end
end

wear_clothes(:loop_industrial)
wash_clothes(50)
dry_clothes(1)

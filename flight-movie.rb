# given flight duration in minutes and an array of movie lengths, write an algorithm that returns boolean if passenger can watch 2 movies


def can_watch_2?(flightDuration, moviesArray)
  can_watch = false
  durationHash = {}
  moviesArray.each do |movie|
    break if can_watch == true
    if durationHash[movie]
      can_watch = true
    else    
      durationHash[flightDuration - movie] = true
    end
  end
  puts can_watch
end

can_watch_2?(120, [30, 40, 90])
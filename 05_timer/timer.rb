def time_string(time)
  h = time / (60 * 60)
  m = (time/ 60) % 60
  s = time % 60
  [h, m, s].map do |i|
    i.to_s.rjust(2,'0')
  end.join(':')
end

# Idem -- Time.at(time).utc.strftime("%H:%M:%S")

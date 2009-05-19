text = ARGV[0];
files = text.downcase.gsub(' ','-').split(//).collect{|c| "slice/#{c}.gif "}.join
cmd = "montage -tile x1 -filter Point -geometry 12x12+1+2 #{files} out.gif"
puts cmd
`#{cmd}`

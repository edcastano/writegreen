require './config/environment'
require 'csv'

CSV.foreach('c:\sites\sandbox\wgtopicfocus.csv') do |row|
	record = Sentence.new(
	:emphasis => row[0],
	:content => row[1],
	:order => row[2],
	)
    record.save!
end	
	
	
	
	
	
	
#File.open(filename).each { |line|
    #puts line if line =~ /blue/
#}
 
#puts "Here's your file: #{filename}"
#puts txt.read()
 
#puts "Type the filename again:"
#print prompt
#file_again = STDIN.gets.chomp()
 
#txt_again = File.open(file_again)
 
#puts txt_again.read()



#c.job_title=row[1]
#c.first_name=row[2]
#c.last_name=row[3]
#if c.save
	#n=n+1
    #GC.start if n%50==0
#end

class ReadFile
    def SoccerFile
       file = 'football.dat'
        f = File.open(file, 'r')
        f.each_line { |line|
        puts line
    }
    end   

    def WeatherFile
         day =[]
         minTemp=[]
         maxTemp=[]
        File.readlines('weather.dat').each do |line|
        day << line.split[0].to_i
        minTemp << line.split[2].to_f
        maxTemp << line.split[1].to_f
        end
    
        day.delete(0)
        minTemp.delete(0)
        minTemp.pop
        maxTemp.delete(0)
        maxTemp.pop
        res = []
        n = day.size


        for i in 0..29
            res << maxTemp[i] - minTemp[i]
        end
        

    puts "El dia con menor diferencia de temperatura es: #{day[res.index(res.min)]}" 
    

end
end

readFiles = ReadFile.new
#readFiles.SoccerFile
readFiles.WeatherFile


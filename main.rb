load "readFile.rb"

class ViewData
   def printSoccer
        file = readFile.new
        file.SoccerFile
    end

    def printWeather
       file.WeatherFile
    end
end

viewInfo = ViewData.new
viewInfo.printData


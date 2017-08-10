class RpgsController < ApplicationController
  @@time = Time.new
    def index
      if !session[:gold] and !session[:messages]
        session[:gold] = 0
        session[:messages] = []
        @messages = session[:messages]
    end

    def farm
      @random = rand(10..20)
      @timestamp = @@time.strftime('%Y-%m-%d %H:%M %p')
      session[:gold] += @random
      session[:messages].push("You've earn #{@random} from the farm, dang #{@timestamp}")
      redirect_to "/"
    end

    def cave
      @random = rand(5..10)
      @timestamp = @@time.strftime('%Y-%m-%d %H:%M %p')
      session[:gold] += @random
      session[:messages].push("You've earn #{@random} from the cave, dang #{@timestamp}")
      redirect_to "/"
    end

    def house
      @random = rand(2..5)
      @timestamp = @@time.strftime('%Y-%m-%d %H:%M %p')
      session[:gold] += @random
      session[:messages].push("You've earn #{@random} from the house, dang #{@timestamp}")
      redirect_to "/"
    end

    def casino
      @random = rand(-50..50)
      @timestamp = @@time.strftime('%Y-%m-%d %H:%M %p')
      session[:gold] += @random
      if @random < 0
        session[:messages].push("Dude sorry but you loses #{@random} at the casino. #{@timestamp}")
      else
        session[:messages].push("You've earn #{@random} from the casino, treat yourself #{@timestamp}")
      end
      redirect_to "/"
    end

    def reset
      session.clear
      redirect_to "/"
    end
  end
end

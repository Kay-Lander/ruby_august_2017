class TimesController < ApplicationController
  def main
    @now = Time.now
  end
end

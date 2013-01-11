class ColorController < ApplicationController
  require 'engtagger'
  
  def index
    # Create a parser object
    tgr = EngTagger.new
    
    # Sample text
    text = "DSP has revolutionized radar in three areas, 
      all of which relate to this basic problem. 
      First, DSP can compress the pulse after it is received, 
      providing better distance determination without reducing 
      the operating range. Second, DSP can filter the received 
      signal to decrease the noise. This increases the range, without 
      degrading the distance determination. Third, DSP enables 
      the rapid selection and generation of different pulse shapes and 
      lengths. Among other things, this allows the pulse to be optimized 
      for a particular detection problem. Now the impressive part: much of 
      this is done at a sampling rate comparable to the radio frequency used, 
      at high as several hundred megahertz! When it comes to radar, 
      DSP is as much about high-speed hardware design as it is about algorithms."
    
    # Add part-of-speech tags to text
    @tagged = tgr.add_tags(text)
  end
end

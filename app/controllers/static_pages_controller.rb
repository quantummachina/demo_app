# encoding: utf-8
class StaticPagesController < ApplicationController
  def home
  	t = params[:texto] || ""
  	@texto69 = do69(t)
  	@comment = Comment.new
  end

 private

 	def do69(text)
 		ta = text.gsub('qu','k').gsub('Qu','K')
 		tb = ta.gsub('ce','ze').gsub('Ce','Ze').gsub('CE','CE').gsub('cE','zE').gsub('ci','zi').gsub('Ci','Zi').gsub('cI','zI').gsub('CI','ZI').gsub('cé','zé').gsub('Cé','Zé').gsub('CÉ','CÉ').gsub('cÉ','zÉ').gsub('cí','zí').gsub('Cí','Zí').gsub('cÍ','zÍ').gsub('CÍ','ZÍ')
 		tc = tb.gsub('ge','je').gsub('Ge','Je').gsub('gE','jE').gsub('GE','JE').gsub('gi','ji').gsub('Gi','Ji').gsub('gI','jI').gsub('GI','JI').gsub('gé','jé').gsub('Gé','Jé').gsub('gÉ','jÉ').gsub('GÉ','JÉ').gsub('gí','jí').gsub('Gí','Jí').gsub('gÍ','jÍ').gsub('GÍ','JÍ')
 		td = tc.gsub(/./) {|s| 
 			case s 
 			when'h'
 			when 'H'
 			when 's'; 'z'
 			when 'S'; 'Z'
 			when 'v'; 'b'
 			when 'V'; 'B'
 			when 'c'; 'k'
 			when 'C'; 'K'
 			else
 				s
 			end
 			}
 		
 		td
 	end
end

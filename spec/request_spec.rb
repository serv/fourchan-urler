require 'spec_helper'

describe FourchanUrler::Request, '#initialize' do
  it 'returns a Request object' do 
    request = FourchanUrler::Request.new('http://boards.4chan.org/b/res/489537693')
    request.class.name.should == 'FourchanUrler::Request'
  end
  
  it 'has right attributes' do 
    request = FourchanUrler::Request.new('http://boards.4chan.org/b/res/489537693')
    request.thread_id.should == 489537693
    request.board.should == 'b'
  end
end
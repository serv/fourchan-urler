require 'spec_helper'

describe FourchanUrler do
  describe 'with a valid url on request method' do
    let(:thread_id) { 489537693 }
    let(:board) { "b" }
    subject { FourchanUrler.request("https://boards.4chan.org/#{board}/thread/#{thread_id}/something") }

    its(:thread_id) { should == thread_id }
    its(:board) { should == board }
  end
end

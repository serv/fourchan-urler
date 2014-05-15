require 'spec_helper'

describe FourchanUrler::Request do
  describe 'with a valid url' do
    let(:thread_id) { 489537693 }
    let(:board) { "b" }
    subject { FourchanUrler::Request.new("https://boards.4chan.org/#{board}/thread/#{thread_id}/something") }

    its(:thread_id) { should == thread_id }
    its(:board) { should == board }
  end

  describe 'with an invalid host' do
    it { expect{FourchanUrler::Request.new("")}.to raise_error(ArgumentError) }
  end

  describe 'with an invalid urls' do
    invalid_urls = [
      'http://example.com',
      'http://boards.4chan.org/b/es/489946907',
      'http://boards.4chan.org/none/es/489946907',
      'http://boards.4chan.org/b/es/489dfs946907'
    ]

    invalid_urls.each do |u|
      it { expect{FourchanUrler::Request.new(u)}.to raise_error(ArgumentError) }
    end
  end
end

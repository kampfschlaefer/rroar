
require 'spec_helper'

class MyClass
  def hello
    'Hello'
  end

  include Rroar::Recorder
end

describe 'Rroar.Recorder' do

  let(:mc) { MyClass.new }

  it 'has all functions of the original class' do
    expect(mc).to respond_to('hello')
  end

  it 'has keeps references to the original functions of a class' do
    expect(mc).to respond_to('rr_hello')
  end

  it 'has the start_recording function' do
    expect(mc).to respond_to('start_recording')
  end
  it 'has the get_recording function' do
    expect(mc).to respond_to('get_recording')
  end
  it 'returns an empty recording' do
    recording = mc.get_recording
    expect(recording).to eq([])
  end

  it 'records calls to all functions'
end

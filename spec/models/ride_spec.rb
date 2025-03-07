require 'spec_helper'

describe Ride do
  let(:ride) { subject }

  it 'belongs to a passenger' do
    ride = Ride.create
    passenger = Passenger.create
    ride.passenger = passenger
    ride.save

    expect(passenger.rides).to include(ride)
  end

  it 'belongs to a taxi' do
    ride = Ride.create
    taxi = Taxi.create
    ride.taxi = taxi
    ride.save

    expect(taxi.rides).to include(ride)
  end
end

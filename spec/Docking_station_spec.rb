require 'Docking_station'

describe DockingStation do
    it {is_expected.to respond_to :release_bike}
end

describe DockingStation do
  describe '#release_bike' do 
    it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
        end
        it 'raises an error when there are no bikes available' do 
            expect {subject.release_bike}.to raise_error 'No bikes' 
        end
    end
end

#---------------


describe DockingStation do  
    describe '#dock' do 
        it 'raises an error when the station is full' do
            21.times { subject.dock(Bike.new) }
            expect {subject.dock Bike.new  }.to raise_error 'Station Full'
        end
    end
end
#---------------

describe DockingStation do
    it { is_expected.to respond_to(:dock).with(1).argument }
end

describe DockingStation do
    it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike.last).to equal bike
    end
end
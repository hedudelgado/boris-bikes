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
    end
end

describe DockingStation do
    it { is_expected.to respond_to(:dock).with(1).argument }
end

describe DockingStation do
    it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to equal bike
    end
end
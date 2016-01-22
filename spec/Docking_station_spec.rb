require 'Docking_station'


#estoy en chapter 18 sin empezar y hasta ahora todo funcionando

describe DockingStation do
    it {is_expected.to respond_to :release_bike}
end

describe DockingStation do
  describe '#release_bike' do 
    it 'releases a bike' do
        bike = double(:helloooooooo)
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
        end
        it 'raises an error when there are no bikes available' do 
            expect {subject.release_bike}.to raise_error 'No bikes' 
        end
    end
end

describe DockingStation do
    it 'its allow to set the station capacity' do 
        expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
end


describe DockingStation do  
    describe '#dock' do 
        it 'raises an error when the station is full' do
           subject.capacity.times {subject.dock "hello"}
           expect {subject.dock double(:hello)}.to raise_error 'Station Full' 
        end
    end
end

describe DockingStation do
    it { is_expected.to respond_to(:dock).with(1).argument }
end

#describe DockingStation do
 #   it 'returns docked bikes' do
  #      bike = Bike.new
   #     subject.dock(bike)
    #    expect(subject.bike.last).to equal bike
    #end
#end

describe DockingStation do
    describe 'initialization' do 
        subject { DockingStation.new } 
            let(:bike) { Bike.new }
            it 'defaults capacity' do 
                described_class::DEFAULT_CAPACITY.times do 
                subject.dock(bike)
            end
        expect{ subject.dock(bike) }.to raise_error 'Station Full' 
        end
    end
end

# describe DockingStation do       I have to work on this to make it work!
#   describe '#release_bike' do 
#     it 'releases a bike' do
#         bike = Bike.new
#         bike.report_broken
#         subject.dock(bike)
#         it 'raises an error when the bike is broken' do 
#             expect {subject.release_bike}.to raise_error 'No bikes' 
#             end
#         end
#     end
# end











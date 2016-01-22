require "bike"
describe Bike do
	it {is_expected.to respond_to :working?}
	
end

describe Bike do 
	it 'should report that a bike is broken' do 
		subject.marked_as_broken
		expect(subject).to be_broken
	end
end

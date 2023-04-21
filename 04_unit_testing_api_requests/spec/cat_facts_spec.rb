require 'cat_facts'
require 'net/http'

RSpec.describe CatFacts do
    it "gives a cat fact" do
        requester_dbl = double :requester
        allow(requester_dbl).to receive(:get).with(
            URI("https://catfact.ninja/fact")
            ).and_return('{"fact":"Florence Nightingale owned more than 60 cats in her lifetime.","length":61}')

        cat_fact = CatFacts.new(requester_dbl)
        expect(cat_fact.provide).to eq "Cat fact: Florence Nightingale owned more than 60 cats in her lifetime."
    end
end
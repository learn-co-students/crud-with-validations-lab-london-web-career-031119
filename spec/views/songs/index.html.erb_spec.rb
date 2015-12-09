require 'rails_helper'

RSpec.describe "songs/index", type: :view do
  before do
    assign(:songs, Song.create!([
      {
        title: "Rhythms Which I Played",
        release_year: 2000,
        released: true,
        genre: "Normcore",
        artist_name: "Man With Instruments"
      },
      {
        title: "Rhythms Which I Played Again at a Later Time",
        release_year: 2004,
        released: true,
        genre: "Sci-Crust Fizz-Punk",
        artist_name: "Man With Instruments"
      }
    ]))
  end

  it "renders a list of songs" do
    render
    assert_select "tbody > tr", 2
  end
end

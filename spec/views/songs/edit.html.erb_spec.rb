require 'rails_helper'

RSpec.describe "songs/edit", type: :view do
  let(:song) do
    Song.create!(
      title: "Rhythms Which I Played",
      release_year: 2000,
      released: true,
      genre: "Normcore",
      artist_name: "Man With Instruments"
    )
  end
  before { assign(:song, song) }

  it "renders the edit song form" do
    render

    assert_select "form[action=?]", song_path(song) do
      assert_select 'input[name="song[title]"][value=?]', song.title
      assert_select 'input[name="song[release_year]"][value=?]', song.release_year.to_s
      assert_select 'input[name="song[released]"][checked=checked]'
      assert_select 'input[name="song[genre]"][value=?]', song.genre
      assert_select 'input[name="song[artist_name]"][value=?]', song.artist_name
    end
  end
end

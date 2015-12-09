require 'rails_helper'

RSpec.describe "songs/new", type: :view do
  it "renders form" do
    assign(:song, Song.new)

    render

    assert_select "form[action=?]", songs_path do
      assert_select "input#song_title[name=?]", "song[title]"
      assert_select "input#song_release_year[name=?]", "song[release_year]"
      assert_select "input#song_released[name=?]", "song[released]"
      assert_select "input#song_genre[name=?]", "song[genre]"
      assert_select "input#song_artist_name[name=?]", "song[artist_name]"
    end
  end
end

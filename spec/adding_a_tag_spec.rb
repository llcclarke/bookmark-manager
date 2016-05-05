feature "Adding a tag" do
  scenario "Add a single tag when you save a link" do
    visit '/links/new'
    fill_in "url", with: "http://www.zombo.com/"
    fill_in "title", with: "This is Zombocom"
    fill_in "tags", with: "dope"
    click_button "Create link"
    link = Link.first
    expect(link.tags.map(&:name)).to include("dope")
  end
end
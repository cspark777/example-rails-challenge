require 'rails_helper'

RSpec.describe "charges/index", type: :view do
  before(:each) do
    load_seed
    assign(:charges, Charge.all)
  end

  it "renders a list of transactions" do
    render

    expect(rendered).to have_selector('h1', count: 3)
    expect(rendered).to have_selector('h1', text: 'Failed Charges', count: 1)
    expect(rendered).to have_selector('table.failed tbody tr', count: 10)

    expect(rendered).to have_selector('h1', text: 'Disputed Charges', count: 1)
    expect(rendered).to have_selector('table.disputed tbody tr', count: 5)

    expect(rendered).to have_selector('h1', text: 'Failed Charges', count: 1)
    expect(rendered).to have_selector('table.success tbody tr', count: 10)
  end
end

require 'spec_helper'

describe "reclamacaos/index.html.erb" do
  before(:each) do
    assign(:reclamacaos, [
      stub_model(Reclamacao,
        :titulo => "Titulo",
        :descricao => "MyText",
        :tipo => "Tipo",
        :usuario_id => 1,
        :empresa => "Empresa"
      ),
      stub_model(Reclamacao,
        :titulo => "Titulo",
        :descricao => "MyText",
        :tipo => "Tipo",
        :usuario_id => 1,
        :empresa => "Empresa"
      )
    ])
  end

  it "renders a list of reclamacaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Empresa".to_s, :count => 2
  end
end

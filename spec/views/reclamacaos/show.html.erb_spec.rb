require 'spec_helper'

describe "reclamacaos/show.html.erb" do
  before(:each) do
    @reclamacao = assign(:reclamacao, stub_model(Reclamacao,
      :titulo => "Titulo",
      :descricao => "MyText",
      :tipo => "Tipo",
      :usuario_id => 1,
      :empresa => "Empresa"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Empresa/)
  end
end

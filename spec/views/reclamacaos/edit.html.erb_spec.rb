require 'spec_helper'

describe "reclamacaos/edit.html.erb" do
  before(:each) do
    @reclamacao = assign(:reclamacao, stub_model(Reclamacao,
      :titulo => "MyString",
      :descricao => "MyText",
      :tipo => "MyString",
      :usuario_id => 1,
      :empresa => "MyString"
    ))
  end

  it "renders the edit reclamacao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reclamacaos_path(@reclamacao), :method => "post" do
      assert_select "input#reclamacao_titulo", :name => "reclamacao[titulo]"
      assert_select "textarea#reclamacao_descricao", :name => "reclamacao[descricao]"
      assert_select "input#reclamacao_tipo", :name => "reclamacao[tipo]"
      assert_select "input#reclamacao_usuario_id", :name => "reclamacao[usuario_id]"
      assert_select "input#reclamacao_empresa", :name => "reclamacao[empresa]"
    end
  end
end

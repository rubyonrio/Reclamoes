require 'spec_helper'

describe Reclamacao do

  it 'should not create without titulo' do
    reclamacao = Reclamacao.new({:descricao => "descricao"})
    reclamacao.should_not be_valid
  end
  
  it 'should not create without descricao' do
    reclamacao = Reclamacao.new({:titulo => "titulo"})
    reclamacao.should_not be_valid
  end
  
  it 'should be valid with all attributes' do
    reclamacao = Reclamacao.new({:titulo => 'Titulo', :descricao => 'descricao', 
                                 :tipo => 'tipo', :empresa => 'empresa', 
                                 :usuario_id => 1	})
    reclamacao.should be_valid             
  end
  
  it 'should not be valid with all attributes empty' do
    reclamacao = Reclamacao.new({:titulo => '', :descricao => '', 
                                 :tipo => '', :empresa => '', 
                                 :usuario_id => nil})
    reclamacao.should_not be_valid             
  end
  	  
end

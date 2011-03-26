class Reclamacao < ActiveRecord::Base

  validates_presence_of :titulo, :descricao, :tipo, :empresa, :usuario_id
end

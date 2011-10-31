class Evento < ActiveRecord::Base
validates :cod_disco, :nombre, :fecha ,:hora, :presence => true

validates :logo_web, :format => {
:with => %r{\.(gif|jpg|png)$}i,
:message => 'must be a URL for GIF, JPG or PNG image.'
}
end

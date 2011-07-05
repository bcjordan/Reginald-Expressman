class Namedalias < ActiveRecord::Base
  attr_accessible :shortname, :url, :longname, :description
end

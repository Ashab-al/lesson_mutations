class <%= class_name %> < Mutations::Command
  required do 
    <% attributes.each do |attr| %>
      <%= attr.name %>: <%= attr.type %>
    <% end %>
  end

  def execute 
    Model.operation!(
      <% attributes.each do |attr| %>
        <%= attr.name %>: inputs[:<%= attr.name %>]
      <% end %>
    )
  end
end
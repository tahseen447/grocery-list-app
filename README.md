# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* <% f.fields_for :list_items, @list.list_items.build do |list_item_fields| %>
    <%
    <div><%= f.label :quantity %><br>
    <%= f.text_field :quantity %></div>

    <%= form_for @item.store_items.build do |f|%>
    <%= f.label :price  %>
    <%= f.hidden :store_id, :value=>@store.id %>
    <%= f.fields_for :price,  @item.store_items.build do |item_field| %>
    <%= item_field.text_field :price %>
    <%= f.submit %>
    <% end %>
    <% end %>

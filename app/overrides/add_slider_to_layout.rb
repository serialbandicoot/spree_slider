#Deface::Override.new(:virtual_path => "spree/home/index",
#                     :name => "spree_slider",
#                     :insert_before => "[data-hook='homepage_products']",
#                     :text  => %q{
#                     <div id='spree-slider' data-hook="dh_spree_slider">
#                      <% render 'spree/shared/slider'%>
#                     </div>
#                     })

Deface::Override.new(:virtual_path => "spree/home/index",
                     :name => "spree_slider",
                     :insert_before => "[data-hook='homepage_products']",
                     :partial  => 'spree/shared/slider')

#Deface::Override.new(:virtual_path => "spree/home/index",
#                     :name => "index_news_partial",
#                     :insert_before => "[data-hook='homepage_products']",
#                     :partial => "shared/news",
#                     :disabled => false)

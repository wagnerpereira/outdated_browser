 module OutdatedBrowserHelper

	def params_controller_outdated_browser?
		params[:controller] == "outdated_browser"
	end

	def params_action_outdated_browser_index?
		params_controller_outdated_browser? && params[:action]=="index"
	end

	def params_action_javascript_enabled?
		params_controller_outdated_browser? && params[:action]=="javascript_disabled"
	end

	def javascript_enabled_html
    content_tag(:noscript, nil) do
      content_tag(:p, (raw "
          <div id='outdated' class='javascript' style='background-color: rgb(242, 86, 72); color: rgb(255, 255, 255); opacity: 1; display: block;'>
            <h6 style='color: rgb(255, 255, 255);'>
              #{I18n.t('outdated_browser.javascript_disabled')}
            </h6>
            <p style='color: rgb(255, 255, 255);'>
              #{raw I18n.t('outdated_browser.javascript_disabled_instruction') if params_action_javascript_enabled?}"+
          unless params_action_javascript_enabled?
              "<a href='#{javascript_disabled_outdated_browser_index_url}' id='btnUpdateBrowser' style='color: rgb(255, 255, 255); background-color: rgb(242, 86, 72);'> #{I18n.t('outdated_browser.javascript_disabled_button_text')}</a>
            </p></div>"
          else
            "</p></div>"
          end
        )
      )
    end
  end

end
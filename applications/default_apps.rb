# frozen_string_literal: true

def create_content_type_xml(type, app)
  %('
<dict>
    <key>LSHandlerContentType</key>
    <string>#{type}</string>
    <key>LSHandlerPreferredVersions</key>
    <dict>
        <key>LSHandlerRoleAll</key>
        <string>-</string>
    </dict>
    <key>LSHandlerRoleAll</key>
    <string>#{app}</string>
</dict>
')
end

def create_content_tag_xml(tag, app)
  %('
<dict>
    <key>LSHandlerPreferredVersions</key>
	  <dict>
		    <key>LSHandlerRoleAll</key>
        <string>-</string>
	  </dict>
    <key>LSHandlerRoleAll</key>
	  <string>#{app}</string>
    <key>LSHandlerContentTagClass</key>
	  <string>public.filename-extension</string>
    <key>LSHandlerContentTag</key>
	  <string>#{tag}</string>
 </dict>
')
end

def create_url_scheme_xml(scheme, app)
  %('
<dict>
    <key>LSHandlerPreferredVersions</key>
    <dict>
        <key>LSHandlerRoleAll</key>
        <string>-</string>
    </dict>
    <key>LSHandlerRoleAll</key>
    <string>#{app}</string>
    <key>LSHandlerURLScheme</key>
    <string>#{scheme}</string>
</dict>
')
end

def create_content_type_xmls(types, app)
  types.values.map {|type| create_content_type_xml(type, app)}
end

def create_content_tag_xmls(tags, app)
  tags.map { |tag| create_content_tag_xml(tag, app) }
end

def create_url_scheme_xmls(schemes, app)
  schemes.map { |scheme| create_url_scheme_xml(scheme, app) }
end

content_tags_for_editor = %w[scss sass go]

content_types_for_editor = {
  md: 'net.daringfireball.markdown',
  js: 'com.netscape.javascript-source',
  rb: 'public.ruby-script',
  py: 'public.python-script',
  sh: 'public.shell-script',
  xml: 'public.xml',
  css: 'public.css',
  json: 'public.json'
}

url_schemes_for_browser = %w[http https]

content_types_for_browser = {
  pdf: 'com.adobe.pdf',
  url: 'public.url',
  html: 'public.html',
  xhtml: 'public.xhtml'
}

editor = 'org.gnu.Emacs '
browser = 'org.mozilla.firefoxdeveloperedition'
xmls = create_content_type_xmls(content_types_for_browser, browser) +
       create_content_type_xmls(content_types_for_editor, editor) +
       create_content_tag_xmls(content_tags_for_editor, editor) +
       create_url_scheme_xmls(url_schemes_for_browser, browser)

xmls.each do |xml|
  system 'defaults write ~/Library/Preferences/com.apple.LaunchServices/' \
    'com.apple.launchservices.secure.plist LSHandlers -array-add ' \
    "#{xml}"
end

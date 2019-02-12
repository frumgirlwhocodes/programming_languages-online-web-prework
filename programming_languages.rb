def reformat_languages(languages)
  # your code here
  new_hash={}
 anguages.each { |style, languageInfo| 
    languageInfo.each { |key, value|
      if !new_hash.has_key?(key)
        new_hash[key] = {type: value[:type], style: [style]}
      else
        new_hash[key][:style] << style
      end
    }
  }
  new_hash
end	

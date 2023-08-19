baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'Zodiac-Core';
        package: 'Zodiac-Extra' with: [ spec requires: 'Zodiac-Core' ];
        package: 'Zodiac-Tests' with: [ spec requires: 'Zodiac-Core' ];
        yourself.
      spec
        group: 'default' with: #('Core' 'Extras');
        group: 'Core' with: #('Zodiac-Core');
        group: 'Extras' with: #('Zodiac-Extra');
        group: 'Tests' with: #('Zodiac-Tests');
        group: 'CI' with: #('default' 'Tests');
        yourself ].
  spec for: #'pharo' do: [  ].
  spec
    for:
      #(#'gs3.3.x' #'gs3.4.x' #'gs3.5.x' #'gs3.6.x' #'gs3.7.x' #'gs3.8.x' #'gs3.9.x')
    do: [ 
      spec
        package: 'Zodiac-GemStone-Core' with: [ spec requires: 'Zodiac-Core' ];
        yourself.
      spec
        group: 'Core' with: #('Zodiac-GemStone-Core');
        yourself ].
  spec
    for: #(#'gs3.7.x' #'gs3.8.x' #'gs3.9.x')
    do: [ 
      spec
        package: 'Zodiac-37x-Tests' with: [ spec requires: 'Zodiac-Tests' ];
        yourself.
      spec
        group: 'Tests' with: #('Zodiac-37x-Tests');
        yourself ]
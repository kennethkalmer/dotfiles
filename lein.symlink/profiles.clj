{:repl {:plugins [[cider/cider-nrepl "0.21.1"]
                  [refactor-nrepl "2.4.0"]]
        :dependencies [#_ [alembic "0.3.2"]]}
 :user {:plugins [[lein-ancient "0.6.15"]
                  #_ [com.jakemccrary/lein-test-refresh "0.23.0"]
                  #_ [venantius/ultra "0.5.2"]
                  #_ [lein-kibit "0.1.6"]
                  #_ [lein-repetition-hunter "0.1.0-SNAPSHOT"]
                  #_ [lein-exec "0.3.7"]
                  #_ [lein-auto "0.1.3"]
                  #_ [lein-pprint "1.2.0"]
                  ]
        :dependencies [#_ [repetition-hunter "1.0.0"]]
        :test-refresh {:quiet true
                       :changes-only true}}}

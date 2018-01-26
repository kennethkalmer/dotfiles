{:repl {:plugins [[cider/cider-nrepl "0.17.0-SNAPSHOT"]
                  [refactor-nrepl "2.4.0-SNAPSHOT"]]
        :dependencies [[alembic "0.3.2"]
                       [org.clojure/tools.nrepl "0.2.13"]
                       [proto-repl "0.3.1"]]}
 :user {:plugins [[lein-ancient "0.6.15"]
                  [com.jakemccrary/lein-test-refresh "0.22.0"]
                  [venantius/ultra "0.5.2"]
                  [lein-kibit "0.1.6"]
                  [lein-repetition-hunter "0.1.0-SNAPSHOT"]
                  [lein-exec "0.3.7"]
                  [lein-auto "0.1.3"]
                  [lein-pprint "1.2.0"]]
        :dependencies [[repetition-hunter "1.0.0"]]
        :test-refresh {:quiet true
                       :changes-only true}}}

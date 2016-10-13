{:repl {:plugins [[cider/cider-nrepl "0.14.0-SNAPSHOT"]
                  [refactor-nrepl "2.3.0-SNAPSHOT"]]
        :dependencies [[alembic "0.3.2"]
                       [org.clojure/tools.nrepl "0.2.12"]]}
 :user {:plugins [[lein-ancient "0.6.10"]
                  [com.jakemccrary/lein-test-refresh "0.16.0"]
                  [venantius/ultra "0.4.1"]
                  [lein-kibit "0.1.2"]
                  [lein-repetition-hunter "0.1.0-SNAPSHOT"]]
        :dependencies [[repetition-hunter "1.0.0"]]
        :test-refresh {:quiet true
                       :changes-only true}}}

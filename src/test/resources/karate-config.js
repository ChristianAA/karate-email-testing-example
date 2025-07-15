function fn() {

    karate.configure('connectTimeout', 10000);
    karate.configure('readTimeout', 10000);
    karate.configure('headers', {Accept: '*/*'});
    karate.configure('report', { showLog: true, showAllSteps: true });
    karate.configure('logPrettyRequest', true);
    karate.configure('logPrettyResponse', true);
    
    var config = {};
    config.global = karate.callSingle('classpath:features/common_resources/global-variables.feature');
    
    config.MAILPIT_URL = 'http://localhost:8025/api/v1/';

    return config;
}
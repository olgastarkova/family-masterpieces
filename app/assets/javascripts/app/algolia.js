
//Config
var applicationID = '5AS663GRYM';
var apiKey = 'f175da6e608ba5154f17b4fdaf8d056b';


var client = algoliasearch(applicationID, apiKey);
var index = client.initIndex('Poem');

index.search('something', { hitsPerPage: 10, page: 0 })
  .then(function searchDone(content) {
    console.log(content)
  })
  .catch(function searchFailure(err) {
    console.error(err);
  });

var helper = algoliasearchHelper(client, indexName);








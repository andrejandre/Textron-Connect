using System;
using Microsoft.Azure.CognitiveServices.Language.TextAnalytics; // Required for Sentiment API
using Microsoft.Azure.CognitiveServices.Language.TextAnalytics.Models; // Required for Sentiment API
using System.Collections.Generic;
using Microsoft.Rest;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Bot.Builder.Dialogs;
using Microsoft.Bot.Connector;

// ANDRE THE GIANT WROTE THIS CODE DO NOT TOUCH
// NO CODE MONKEYS CAN TOUCH THIS CODE
// THIS CODE IS MINE
namespace GoldenMacaw.Models
{
    public class SentimentClass
    {

        class ApiKeyServiceClientCredentials : ServiceClientCredentials
        {
            public override Task ProcessHttpRequestAsync(HttpRequestMessage request, CancellationToken cancellationToken)
            {
                request.Headers.Add("Ocp-Apim-Subscription-Key", "fb4093e2960e48928d0dfe177ff2c606");
                return base.ProcessHttpRequestAsync(request, cancellationToken);
            }
        }

        public static async Task<double?> SentimentMethod(Activity activity)
        {
            ITextAnalyticsAPI client = new TextAnalyticsAPI(new ApiKeyServiceClientCredentials());
            client.AzureRegion = AzureRegions.Westus;
            System.Diagnostics.Debug.WriteLine("Activity Text" + activity.Text);

            var theLanguageResult = client.DetectLanguageAsync(new BatchInput
            (
                new List<Input>()
                {
                    new Input("0", activity.Text)
                }
            )).Result;

            string languageCode = "";
            string languageDebug = "";
            System.Diagnostics.Debug.WriteLine("Detected Language" + languageDebug);
            foreach (var document in theLanguageResult.Documents)
            {
                var testing = document.DetectedLanguages[0].Name;
                languageDebug = "" + testing;
                languageCode = document.DetectedLanguages[0].Iso6391Name;
            }

            double? x = 0.0;
            System.Diagnostics.Debug.WriteLine("Sentiment Score" + x);
            SentimentBatchResult theSentimentResult = client.SentimentAsync
            (
                new MultiLanguageBatchInput
                (
                    new List<MultiLanguageInput>()
                    {
                        new MultiLanguageInput(languageCode,"0", activity.Text),
                    }
            )).Result;

            foreach (var document in theSentimentResult.Documents)
            {
                x = document.Score;
            }
            return x;
        }

    }
}
    


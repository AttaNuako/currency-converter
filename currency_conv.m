clc;  
clear;  

% Define exchange rates
exchangeRates = struct('USD_EUR', 0.92, 'USD_GBP', 0.78, 'USD_INR', 83.2, "USD_GHS", 15.54, "USD_CAD", 1.43,...
                       'EUR_USD', 1.07, 'EUR_GBP', 0.85, 'EUR_INR', 90.5, "EUR_GHS", 16.73, "EUR_CAD", 1.55,...
                       'GBP_USD', 1.29, 'GBP_EUR', 1.20, 'GBP_INR', 110.9, "GBP_GHS", 20.50, "GBP_CAD", 1.85,...
                       'INR_USD', 0.012, 'INR_EUR', 0.011, 'INR_GBP', 0.0095,"INR_GHS", 0.18, "INR_CAD", 0.017,...
                       'GHS_USD', 0.064, 'GHS_EUR', 0.060, "GHS_GBP", 0.050, "GHS_INR", 5.52, "GHS_CAD", 0.092,...
                       "CAD_USD", 0.70, "CAD_EUR", 0.65, "CAD_GBP", 0.54, "CAD_INR", 59.87, "CAD_GHS", 0.092 );
 
% Display available currencies
currencies = {'USD', 'EUR', "GHS", 'GBP', "CAD", 'INR'};
fprintf('Available currencies: USD, GHS, EUR, CAD, GBP, INR\n');

% user input
fromCurrency = input('Enter the base currency (e.g., USD): ', 's');
toCurrency = input('Enter the target currency (e.g., EUR): ', 's');
amount = input('Enter the amount to convert: ');

rateKey = sprintf('%s_%s', upper(fromCurrency), upper(toCurrency));

if isfield(exchangeRates, rateKey)
    convertedAmount = amount * exchangeRates.(rateKey);
    fprintf('%.2f %s is equal to %.2f %s\n', amount, upper(fromCurrency), convertedAmount, upper(toCurrency));
else
    fprintf('Exchange rate from %s to %s is not available.\n', upper(fromCurrency), upper(toCurrency));
end
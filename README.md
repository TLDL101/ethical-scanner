# Ethical Scanner — v16 (fresh)

This is a simplified v16 build to unblock testing quickly. It includes:
- FastAPI server with demo bundle + reports + receipts (basic)
- Expo/React Native app with **Simple Mode** (Scan + Settings), onboarding, and clear verdicts.

## Run the API (Docker)
```
docker compose up --build
```
API at http://localhost:8000

## Build the app (cloud, recommended)
Use Expo EAS web dashboard. Set env var `PROD_API_BASE` to your API URL (e.g., `https://your-api.onrender.com`).

## Local dev (optional)
```
cd mobile
npm install
npx expo start
```

## Demo GTINs to try
- 0123456789012 → Demo Pasta (Italy) — Good
- 00012345678905 → Demo Coffee (Brazil) — Good

If you add products with COO in RU/IR/KP/SY/CU in `server/app/static/bundles/demo/products.json`, scans will show **Consider avoiding** with sanctions chips.

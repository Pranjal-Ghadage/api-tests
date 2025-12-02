# API Tests

![Postman Tests](https://github.com/Pranjal-Ghadage/api-tests/actions/workflows/postman.yml/badge.svg)

This repository contains **Postman collections** for testing APIs. The tests are automated using **GitHub Actions** with **Newman**.

---

## Workflow: Postman Tests

### How it works
1. The workflow runs automatically on **push to the `master` branch** or can be triggered manually via GitHub UI.
2. It checks the `trigger.txt` file:
   - If it contains the word `run`, the workflow executes the Postman collection.
   - Otherwise, the workflow skips running tests.
3. The workflow performs the following:
   - Sets up **Node.js 22.20.0**
   - Installs **Newman**
   - Runs `Booking.postman_collection.json` with `BookingEnv.json`
   - Generates an **HTML report** (`newman-report.html`)

### Viewing Test Results
After a workflow run:
1. Go to the **Actions** tab in your GitHub repository.
2. Select the latest **Postman Tests** workflow run.
3. Scroll down to **Artifacts** and download `newman-report.html` to view detailed test results.

### Manual Trigger
You can manually trigger the workflow:
1. Open the **Actions** tab.
2. Select **Postman Tests** workflow.
3. Click **Run workflow** and select the `master` branch.

---

**Note:** Make sure `trigger.txt` contains the word `run` to execute the tests. Otherwise, the workflow will skip running Newman.

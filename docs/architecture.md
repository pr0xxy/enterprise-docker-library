# Architecture

This Docker image follows a layered approach:

1. Base Image (python:3.10-slim)
2. System dependencies installation
3. Certificate injection
4. Final runtime configuration

## Flow

Build → Harden → Inject Certs → Deploy

## Purpose

Provides a secure, reusable base image for CI/CD pipelines.

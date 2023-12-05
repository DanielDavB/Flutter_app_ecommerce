import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://evtrvdfsiejizdfylkpm.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV2dHJ2ZGZzaWVqaXpkZnlsa3BtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDEyMDMwNzYsImV4cCI6MjAxNjc3OTA3Nn0.nvkxjIL41kaW5VpVpYyudFjMeAHLAs4wbVFo0IA8y-0';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
